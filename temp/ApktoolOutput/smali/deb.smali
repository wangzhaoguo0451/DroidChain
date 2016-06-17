.class final Ldeb;
.super Ljava/lang/Object;
.source "AbstractFavoritable.java"

# interfaces
.implements Lcmk;


# instance fields
.field private synthetic a:[Z

.field private synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>([ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Ldeb;->a:[Z

    iput-object p2, p0, Ldeb;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Ldeb;->a:[Z

    sget-object v0, Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;->CANCEL:Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    .line 147
    iget-object v0, p0, Ldeb;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 146
    goto :goto_0
.end method
