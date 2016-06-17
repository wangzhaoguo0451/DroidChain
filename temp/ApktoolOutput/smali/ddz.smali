.class final Lddz;
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
    .line 102
    iput-object p1, p0, Lddz;->b:Lddx;

    iput-object p2, p0, Lddz;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lddz;->b:Lddx;

    iget-object v0, v0, Lddx;->a:[Z

    aput-boolean v1, v0, v1

    .line 106
    iget-object v0, p0, Lddz;->b:Lddx;

    iget-object v0, v0, Lddx;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    iget-object v0, p0, Lddz;->a:Landroid/view/View;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lddw;->a(Landroid/view/View;J)V

    .line 108
    return-void
.end method
