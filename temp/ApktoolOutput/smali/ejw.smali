.class public final Lejw;
.super Ljava/lang/Object;
.source "PhoenixAlertDialog.java"


# instance fields
.field public a:Lejv;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lejw;->b:Landroid/content/Context;

    .line 482
    new-instance v0, Lejv;

    invoke-direct {v0}, Lejv;-><init>()V

    iput-object v0, p0, Lejw;->a:Lejv;

    .line 483
    return-void
.end method


# virtual methods
.method public final a()Lejq;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 616
    new-instance v0, Lejq;

    iget-object v1, p0, Lejw;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lejq;-><init>(Landroid/content/Context;)V

    .line 617
    iget-object v1, p0, Lejw;->a:Lejv;

    iget v1, v1, Lejv;->a:I

    if-lez v1, :cond_6

    .line 618
    iget-object v1, p0, Lejw;->b:Landroid/content/Context;

    iget-object v2, p0, Lejw;->a:Lejv;

    iget v2, v2, Lejv;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lejq;->a(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    :goto_0
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lejq;->d:Ljava/lang/CharSequence;

    .line 629
    :cond_1
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 634
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iput-object v1, v0, Lejq;->b:Ljava/lang/String;

    .line 637
    :cond_2
    iget-object v1, p0, Lejw;->a:Lejv;

    iget v1, v1, Lejv;->e:I

    if-lez v1, :cond_7

    .line 638
    iget-object v1, p0, Lejw;->b:Landroid/content/Context;

    iget-object v2, p0, Lejw;->a:Lejv;

    iget v2, v2, Lejv;->e:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lejw;->a:Lejv;

    iget-object v2, v2, Lejv;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v3}, Lejq;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 646
    :cond_3
    :goto_1
    iget-object v1, p0, Lejw;->a:Lejv;

    iget v1, v1, Lejv;->h:I

    if-lez v1, :cond_8

    .line 647
    iget-object v1, p0, Lejw;->b:Landroid/content/Context;

    iget-object v2, p0, Lejw;->a:Lejv;

    iget v2, v2, Lejv;->h:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lejw;->a:Lejv;

    iget-object v2, v2, Lejv;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1, v2, v3}, Lejq;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 655
    :cond_4
    :goto_2
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-boolean v1, v1, Lejv;->k:Z

    invoke-virtual {v0, v1}, Lejq;->setCancelable(Z)V

    .line 664
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->l:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 685
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->l:Landroid/view/View;

    iput-object v1, v0, Lejq;->a:Landroid/view/View;

    .line 688
    :cond_5
    invoke-virtual {v0}, Lejq;->a()V

    .line 694
    return-object v0

    .line 619
    :cond_6
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lejq;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 641
    :cond_7
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Lejw;->a:Lejv;

    iget-object v2, v2, Lejv;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v3}, Lejq;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto :goto_1

    .line 650
    :cond_8
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 651
    iget-object v1, p0, Lejw;->a:Lejv;

    iget-object v1, v1, Lejv;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Lejw;->a:Lejv;

    iget-object v2, v2, Lejv;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1, v2, v3}, Lejq;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public final a(I)Lejw;
    .locals 1
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lejw;->a:Lejv;

    iput p1, v0, Lejv;->a:I

    .line 491
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lejw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lejw;->a:Lejv;

    iput p1, v0, Lejv;->e:I

    .line 526
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p2, v0, Lejv;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 527
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lejw;
    .locals 1
    .parameter

    .prologue
    .line 581
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p1, v0, Lejv;->l:Landroid/view/View;

    .line 582
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lejw;
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p1, v0, Lejv;->b:Ljava/lang/CharSequence;

    .line 496
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p1, v0, Lejv;->f:Ljava/lang/CharSequence;

    .line 532
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p2, v0, Lejv;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 533
    return-object p0
.end method

.method public final b()Lejq;
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lejw;->a()Lejq;

    move-result-object v1

    .line 699
    iget-object v0, p0, Lejw;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lejw;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {v1}, Lejq;->show()V

    .line 702
    :cond_0
    return-object v1
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lejw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lejw;->a:Lejv;

    iput p1, v0, Lejv;->h:I

    .line 538
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p2, v0, Lejv;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 539
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lejw;
    .locals 1
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p1, v0, Lejv;->c:Ljava/lang/CharSequence;

    .line 506
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lejw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p1, v0, Lejv;->i:Ljava/lang/CharSequence;

    .line 544
    iget-object v0, p0, Lejw;->a:Lejv;

    iput-object p2, v0, Lejv;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 545
    return-object p0
.end method
