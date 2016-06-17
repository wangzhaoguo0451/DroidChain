.class final Lddx;
.super Ljava/lang/Object;
.source "AbstractFavoritable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field private synthetic c:Lddw;


# direct methods
.method constructor <init>(Lddw;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lddx;->c:Lddw;

    iput-object p2, p0, Lddx;->a:[Z

    iput-object p3, p0, Lddx;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lddx;->c:Lddw;

    invoke-static {v0}, Lddw;->a(Lddw;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300fa

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 87
    const v0, 0x7f0c0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0e00d9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    new-instance v0, Lhoq;

    iget-object v2, p0, Lddx;->c:Lddw;

    invoke-static {v2}, Lddw;->b(Lddw;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 90
    const v2, 0x7f0e00c5

    new-instance v3, Lddy;

    invoke-direct {v3, p0, v1}, Lddy;-><init>(Lddx;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 100
    const v2, 0x7f0e0162

    new-instance v3, Lddz;

    invoke-direct {v3, p0, v1}, Lddz;-><init>(Lddx;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 111
    new-instance v2, Ldea;

    invoke-direct {v2, p0}, Ldea;-><init>(Lddx;)V

    invoke-virtual {v0, v2}, Lhoq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lhoq;

    .line 118
    invoke-virtual {v0, v1}, Lhoq;->a(Landroid/view/View;)Lhoq;

    .line 119
    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    .line 120
    return-void
.end method
