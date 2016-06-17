.class final Lbwb;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbvz;


# direct methods
.method constructor <init>(Lbvz;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbwb;->a:Lbvz;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lbwb;->a:Lbvz;

    iget-object v0, v0, Lbvz;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lbwb;->a:Lbvz;

    invoke-virtual {v0}, Lbvz;->a()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lbwb;->a:Lbvz;

    iget-object v0, v0, Lbvz;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 157
    :goto_1
    const/4 v0, 0x3

    if-lt v1, v0, :cond_2

    .line 168
    :goto_2
    iget-object v0, p0, Lbwb;->a:Lbvz;

    iget-object v0, v0, Lbvz;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 159
    :cond_2
    :try_start_0
    iget-object v0, p0, Lbwb;->a:Lbvz;

    invoke-virtual {v0}, Lbvz;->b()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lbwc;->a(Ljava/lang/String;)Lbwc;

    .line 161
    iget-object v2, p0, Lbwb;->a:Lbvz;

    invoke-virtual {v2, v0}, Lbvz;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AidTaskInit WeiboException Msg : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
