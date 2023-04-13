<footer class="getInTouch py--10">
            <div class="container">
                <div class="getInTouch__wrapper">
                    <ul>
                        <li>Get In Touch</li>
                        <li>
                            the quick fox jumps over the 
                            lazy dog
                        </li>
                        <li>
                            <ul class="socLinks d--flex">
                                <li><i class="fa-brands fa-facebook"></i></li>
                                <li><i class="fa-brands fa-instagram"></i></li>
                                <li><i class="fa-brands fa-twitter"></i></li>
                            </ul>
                        </li>
                    </ul>
                    <ul>
                        <li>Company info</li>
                        <li>About Us</li>
                        <li>We are hiring</li>
                        <li>Blog</li>
                    </ul>
                    <ul>
                        <li>Features</li>
                        <li>Business Marketing</li>
                        <li>User Analytic</li>
                        <li>Live Chat</li>
                        <li>Unlimited Support</li>
                    </ul>
                    <ul>
                        <li>Resources</li>
                        <li>IOS & Android</li>
                        <li>Watch a Demo</li>
                        <li>Customers</li>
                        <li>API</li>
                    </ul>
                </div>
            </div>
        </footer>
        <div class="allRightReserved py--3 bg--gray">
            <div class="container">
                <p class="text--center">Made With Love By Figmaland All Right Reserved</p>
            </div>
        </div>

        <script>
            
            const toogleMenu = document.querySelector('.toggle__menu');
            const nav = document.querySelector('.nav');
            const header = document.querySelector('.header');

            toogleMenu.addEventListener('click' , () =>{
                toogleMenu.classList.toggle('open');
                nav.classList.toggle("open");
                header.classList.toggle("open");
            });

        </script>

    </body>
</html>