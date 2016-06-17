.class public final Lhoq;
.super Ljava/lang/Object;
.source "PhoenixAlertDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lhop;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lhoq;->a:Landroid/content/Context;

    .line 501
    new-instance v0, Lhop;

    invoke-direct {v0}, Lhop;-><init>()V

    iput-object v0, p0, Lhoq;->b:Lhop;

    .line 502
    return-void
.end method


# virtual methods
.method public final a()Lhoj;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 640
    new-instance v0, Lhoj;

    iget-object v1, p0, Lhoq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhoj;-><init>(Landroid/content/Context;)V

    .line 641
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget v1, v1, Lhop;->a:I

    if-lez v1, :cond_8

    .line 642
    iget-object v1, p0, Lhoq;->a:Landroid/content/Context;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget v2, v2, Lhop;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoj;->a(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    :goto_0
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget v1, v1, Lhop;->c:I

    if-lez v1, :cond_9

    .line 648
    iget-object v1, p0, Lhoq;->a:Landroid/content/Context;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget v2, v2, Lhop;->c:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoj;->b(Ljava/lang/CharSequence;)V

    .line 653
    :cond_1
    :goto_1
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget v1, v1, Lhop;->e:I

    if-lez v1, :cond_a

    .line 662
    iget-object v1, p0, Lhoq;->a:Landroid/content/Context;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget v2, v2, Lhop;->e:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget-object v2, v2, Lhop;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v4}, Lhoj;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 670
    :cond_2
    :goto_2
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget v1, v1, Lhop;->h:I

    if-lez v1, :cond_b

    .line 671
    iget-object v1, p0, Lhoq;->a:Landroid/content/Context;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget v2, v2, Lhop;->h:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget-object v2, v2, Lhop;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1, v2, v4}, Lhoj;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 679
    :cond_3
    :goto_3
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 684
    const/4 v1, -0x3

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget-object v2, v2, Lhop;->k:Ljava/lang/CharSequence;

    iget-object v3, p0, Lhoq;->b:Lhop;

    iget-object v3, v3, Lhop;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lhoj;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 687
    :cond_4
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-boolean v1, v1, Lhop;->m:Z

    invoke-virtual {v0, v1}, Lhoj;->setCancelable(Z)V

    .line 689
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->n:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_5

    .line 693
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lhoj;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 695
    :cond_5
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->o:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_6

    .line 696
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->o:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lhoj;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 699
    :cond_6
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->p:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 710
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->p:Landroid/view/View;

    iput-object v1, v0, Lhoj;->a:Landroid/view/View;

    .line 713
    :cond_7
    invoke-virtual {v0}, Lhoj;->a()V

    .line 719
    return-object v0

    .line 643
    :cond_8
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lhoj;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 649
    :cond_9
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lhoj;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 665
    :cond_a
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget-object v2, v2, Lhop;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v4}, Lhoj;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 674
    :cond_b
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 675
    iget-object v1, p0, Lhoq;->b:Lhop;

    iget-object v1, v1, Lhop;->i:Ljava/lang/CharSequence;

    iget-object v2, p0, Lhoq;->b:Lhop;

    iget-object v2, v2, Lhop;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1, v2, v4}, Lhoj;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto/16 :goto_3
.end method

.method public final a(I)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput p1, v0, Lhop;->a:I

    .line 510
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput p1, v0, Lhop;->e:I

    .line 545
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p2, v0, Lhop;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 546
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 596
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnKeyListener;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->o:Landroid/content/DialogInterface$OnKeyListener;

    .line 601
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->p:Landroid/view/View;

    .line 606
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->b:Ljava/lang/CharSequence;

    .line 515
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->f:Ljava/lang/CharSequence;

    .line 551
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p2, v0, Lhop;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 552
    return-object p0
.end method

.method public final a(Z)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-boolean p1, v0, Lhop;->m:Z

    .line 586
    return-object p0
.end method

.method public final b()Lhoj;
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lhoq;->a()Lhoj;

    move-result-object v1

    .line 724
    iget-object v0, p0, Lhoq;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhoq;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {v1}, Lhoj;->show()V

    .line 727
    :cond_0
    return-object v1
.end method

.method public final b(I)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput p1, v0, Lhop;->c:I

    .line 520
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput p1, v0, Lhop;->h:I

    .line 557
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p2, v0, Lhop;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 558
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lhoq;
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->d:Ljava/lang/CharSequence;

    .line 525
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->i:Ljava/lang/CharSequence;

    .line 563
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p2, v0, Lhop;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 564
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p1, v0, Lhop;->k:Ljava/lang/CharSequence;

    .line 575
    iget-object v0, p0, Lhoq;->b:Lhop;

    iput-object p2, v0, Lhop;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 576
    return-object p0
.end method
