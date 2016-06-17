.class final Lddy;
.super Ljava/lang/Object;
.source "AbstractFavoritable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lddx;


# direct methods
.method constructor <init>(Lddx;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lddy;->b:Lddx;

    iput-object p2, p0, Lddy;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lddy;->b:Lddx;

    iget-object v0, v0, Lddx;->a:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 96
    iget-object v0, p0, Lddy;->b:Lddx;

    iget-object v0, v0, Lddx;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    iget-object v0, p0, Lddy;->a:Landroid/view/View;

    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lddw;->a(Landroid/view/View;J)V

    .line 98
    return-void
.end method
