.class final Ldea;
.super Ljava/lang/Object;
.source "AbstractFavoritable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lddx;


# direct methods
.method constructor <init>(Lddx;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Ldea;->a:Lddx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Ldea;->a:Lddx;

    iget-object v0, v0, Lddx;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 115
    return-void
.end method
