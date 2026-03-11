for j in {1..10}; do
    for i in {1..1000}; do
        curl -s -o /dev/null -w "%{http_code}" http://a63ffedd40e664e15a63b1ab072a9e33-1644898895.ap-south-1.elb.amazonaws.com / &
    done
    wait 
    echo "Finished batch $j"
done