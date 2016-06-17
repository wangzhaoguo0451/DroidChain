.class public final Lfzx;
.super Ljava/lang/Object;
.source "NetCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lfzx;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lfzx;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lfzx;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfzx;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->e:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lfzx;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->g:Landroid/os/Handler;

    iget-object v1, p0, Lfzx;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget v2, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->e:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    :cond_0
    return-void
.end method
