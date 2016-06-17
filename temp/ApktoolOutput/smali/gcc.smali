.class final Lgcc;
.super Ljava/lang/Object;
.source "AbstractSubscribable.java"

# interfaces
.implements Lcmk;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lgcc;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lgcc;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    return-void
.end method
