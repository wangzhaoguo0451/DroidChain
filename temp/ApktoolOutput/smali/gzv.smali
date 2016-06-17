.class final Lgzv;
.super Ljava/lang/Object;
.source "PushClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lgzz;

.field private synthetic b:Lcom/wandoujia/push2/protocol/Message;

.field private synthetic c:Lgzu;


# direct methods
.method constructor <init>(Lgzu;Lgzz;Lcom/wandoujia/push2/protocol/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lgzv;->c:Lgzu;

    iput-object p2, p0, Lgzv;->a:Lgzz;

    iput-object p3, p0, Lgzv;->b:Lcom/wandoujia/push2/protocol/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lgzv;->a:Lgzz;

    iget-object v1, p0, Lgzv;->b:Lcom/wandoujia/push2/protocol/Message;

    invoke-virtual {v1}, Lcom/wandoujia/push2/protocol/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgzz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lgzv;->c:Lgzu;

    invoke-static {v0}, Lgzu;->a(Lgzu;)Lhad;

    move-result-object v0

    iget-object v1, p0, Lgzv;->b:Lcom/wandoujia/push2/protocol/Message;

    invoke-virtual {v1}, Lcom/wandoujia/push2/protocol/Message;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lhad;->a(J)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lgzv;->c:Lgzu;

    invoke-static {v0}, Lgzu;->a(Lgzu;)Lhad;

    move-result-object v0

    iget-object v1, p0, Lgzv;->b:Lcom/wandoujia/push2/protocol/Message;

    invoke-virtual {v0, v1}, Lhad;->a(Lcom/wandoujia/push2/protocol/Message;)V

    goto :goto_0
.end method
