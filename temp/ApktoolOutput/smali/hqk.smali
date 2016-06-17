.class public final Lhqk;
.super Landroid/os/Handler;
.source "LocalUpdateService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/update/LocalUpdateService;


# direct methods
.method private constructor <init>(Lcom/wandoujia/update/LocalUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lhqk;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/update/LocalUpdateService;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lhqk;-><init>(Lcom/wandoujia/update/LocalUpdateService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lhqk;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0, p1}, Lcom/wandoujia/update/LocalUpdateService;->a(Landroid/os/Message;)V

    .line 320
    return-void
.end method
