.class Lcom/wandoujia/push2/PushService$MessageBodyBase;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/wandoujia/push2/PushService;

.field public title:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "title"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/push2/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/wandoujia/push2/PushService$MessageBodyBase;->this$0:Lcom/wandoujia/push2/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
