.class public final Lxo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Lxq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxq;-><init>(B)V

    iput-object v0, p0, Lxo;->a:Lxq;

    .line 339
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p1, v0, Lxq;->c:Landroid/content/Context;

    .line 340
    return-void
.end method


# virtual methods
.method public final a()Lxn;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 448
    new-instance v0, Lxn;

    iget-object v1, p0, Lxo;->a:Lxq;

    invoke-direct {v0, v1}, Lxn;-><init>(Lxq;)V

    iget-object v1, p0, Lxo;->a:Lxq;

    iget-object v1, v1, Lxq;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iget-object v2, p0, Lxo;->a:Lxq;

    iget-object v2, v2, Lxq;->e:Ljava/lang/CharSequence;

    iget-object v3, p0, Lxo;->a:Lxq;

    iget-object v3, v3, Lxq;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lxn;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_0
    iget-object v1, p0, Lxo;->a:Lxq;

    iget-object v1, v1, Lxq;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const/4 v1, -0x2

    iget-object v2, p0, Lxo;->a:Lxq;

    iget-object v2, v2, Lxq;->f:Ljava/lang/CharSequence;

    iget-object v3, p0, Lxo;->a:Lxq;

    iget-object v3, v3, Lxq;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lxn;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_1
    invoke-virtual {v0, v5}, Lxn;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v5}, Lxn;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Lxn;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 449
    invoke-virtual {v0}, Lxn;->show()V

    .line 451
    return-object v0
.end method

.method public final a(I)Lxo;
    .locals 1
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lxo;->a:Lxq;

    iget-object v0, v0, Lxq;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxo;->b(Ljava/lang/CharSequence;)Lxo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)Lxo;
    .locals 1
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p1, v0, Lxq;->b:Ljava/lang/CharSequence;

    .line 349
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p1, v0, Lxq;->e:Ljava/lang/CharSequence;

    .line 385
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p2, v0, Lxq;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 386
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lxo;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p1, v0, Lxq;->a:Ljava/lang/CharSequence;

    .line 358
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p1, v0, Lxq;->f:Ljava/lang/CharSequence;

    .line 398
    iget-object v0, p0, Lxo;->a:Lxq;

    iput-object p2, v0, Lxq;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 399
    return-object p0
.end method
