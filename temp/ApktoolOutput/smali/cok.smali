.class public final Lcok;
.super Ljava/lang/Object;
.source "AccountBaseAlertDialog.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcoj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcok;->a:Landroid/content/Context;

    .line 408
    new-instance v0, Lcoj;

    invoke-direct {v0}, Lcoj;-><init>()V

    iput-object v0, p0, Lcok;->b:Lcoj;

    .line 409
    return-void
.end method


# virtual methods
.method public final a()Lcoh;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 536
    new-instance v0, Lcoh;

    iget-object v1, p0, Lcok;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcoh;-><init>(Landroid/content/Context;)V

    .line 537
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget v1, v1, Lcoj;->a:I

    if-lez v1, :cond_5

    .line 538
    iget-object v1, p0, Lcok;->a:Landroid/content/Context;

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget v2, v2, Lcoj;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcoh;->a(Ljava/lang/CharSequence;)V

    .line 543
    :cond_0
    :goto_0
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcoh;->b:Ljava/lang/CharSequence;

    .line 549
    :cond_1
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget v1, v1, Lcoj;->d:I

    if-lez v1, :cond_6

    .line 556
    iget-object v1, p0, Lcok;->a:Landroid/content/Context;

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget v2, v2, Lcoj;->d:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget-object v2, v2, Lcoj;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcoh;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 564
    :cond_2
    :goto_1
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget v1, v1, Lcoj;->g:I

    if-lez v1, :cond_7

    .line 565
    iget-object v1, p0, Lcok;->a:Landroid/content/Context;

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget v2, v2, Lcoj;->g:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget-object v2, v2, Lcoj;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcoh;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 573
    :cond_3
    :goto_2
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-boolean v1, v1, Lcoj;->j:Z

    invoke-virtual {v0, v1}, Lcoh;->setCancelable(Z)V

    .line 583
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->k:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 604
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->k:Landroid/view/View;

    iput-object v1, v0, Lcoh;->a:Landroid/view/View;

    .line 607
    :cond_4
    invoke-virtual {v0}, Lcoh;->a()V

    .line 613
    return-object v0

    .line 539
    :cond_5
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcoh;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 559
    :cond_6
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->e:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget-object v2, v2, Lcoj;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcoh;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto :goto_1

    .line 568
    :cond_7
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->h:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 569
    iget-object v1, p0, Lcok;->b:Lcoj;

    iget-object v1, v1, Lcoj;->h:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcok;->b:Lcoj;

    iget-object v2, v2, Lcoj;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcoh;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    goto :goto_2
.end method

.method public final a(I)Lcok;
    .locals 1
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput p1, v0, Lcoj;->a:I

    .line 417
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcok;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 459
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput p1, v0, Lcoj;->g:I

    .line 460
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p2, v0, Lcoj;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 461
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcok;
    .locals 1
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->k:Landroid/view/View;

    .line 506
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcok;
    .locals 1
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->b:Ljava/lang/CharSequence;

    .line 422
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->e:Ljava/lang/CharSequence;

    .line 454
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p2, v0, Lcoj;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 455
    return-object p0
.end method

.method public final a(Z)Lcok;
    .locals 1
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-boolean p1, v0, Lcoj;->j:Z

    .line 486
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lcok;
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->c:Ljava/lang/CharSequence;

    .line 432
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcok;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p1, v0, Lcoj;->h:Ljava/lang/CharSequence;

    .line 467
    iget-object v0, p0, Lcok;->b:Lcoj;

    iput-object p2, v0, Lcoj;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 468
    return-object p0
.end method
