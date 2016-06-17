.class public final Lepz;
.super Ljava/lang/Object;
.source "HttpTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/wandoujia/net/HttpTransaction;


# direct methods
.method private constructor <init>(Lcom/wandoujia/net/HttpTransaction;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lepz;->b:Lcom/wandoujia/net/HttpTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/net/HttpTransaction;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lepz;-><init>(Lcom/wandoujia/net/HttpTransaction;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Leqe;->a()Leqe;

    move-result-object v0

    new-instance v1, Leqa;

    invoke-direct {v1, p0}, Leqa;-><init>(Lepz;)V

    invoke-virtual {v0, v1}, Leqe;->a(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method
