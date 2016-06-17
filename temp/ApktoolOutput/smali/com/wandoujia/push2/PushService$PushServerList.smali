.class Lcom/wandoujia/push2/PushService$PushServerList;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public servers:Ljava/util/List;
    .annotation runtime Lcwj;
        a = "servers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/wandoujia/push2/PushService;


# direct methods
.method private constructor <init>(Lcom/wandoujia/push2/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/wandoujia/push2/PushService$PushServerList;->this$0:Lcom/wandoujia/push2/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
