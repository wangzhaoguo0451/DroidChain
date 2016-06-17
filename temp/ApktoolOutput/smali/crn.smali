.class final Lcrn;
.super Ljava/lang/Object;
.source "TaskFlow.java"

# interfaces
.implements Lcom/wandoujia/base/utils/TaskFlow$TaskCallback;


# instance fields
.field private synthetic a:Lcrm;


# direct methods
.method constructor <init>(Lcrm;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcrn;->a:Lcrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reject(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcrn;->a:Lcrm;

    iget-object v0, v0, Lcrm;->a:Lcom/wandoujia/base/utils/TaskFlow;

    #calls: Lcom/wandoujia/base/utils/TaskFlow;->reject(Ljava/lang/Exception;)V
    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/TaskFlow;->access$000(Lcom/wandoujia/base/utils/TaskFlow;Ljava/lang/Exception;)V

    .line 80
    return-void
.end method
