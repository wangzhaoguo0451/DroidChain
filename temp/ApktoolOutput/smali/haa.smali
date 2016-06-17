.class public final Lhaa;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/push2/protocol/Download;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lhaa;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/wandoujia/push2/protocol/Download;
    .locals 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcvo;

    invoke-direct {v0}, Lcvo;-><init>()V

    .line 100
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    const-class v2, Lcom/wandoujia/push2/protocol/Download;

    invoke-virtual {v0, v1, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/push2/protocol/Download;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lhaa;->a([Ljava/lang/String;)Lcom/wandoujia/push2/protocol/Download;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    check-cast p1, Lcom/wandoujia/push2/protocol/Download;

    if-eqz p1, :cond_0

    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-object v0, v0, Lgzu;->g:Lgzw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lgzw;->a(Lcom/wandoujia/push2/protocol/Download;)V

    :cond_0
    return-void
.end method
