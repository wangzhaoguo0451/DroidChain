.class final Lbvu;
.super Landroid/os/AsyncTask;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lbvt",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lbvy;

.field private final d:Ljava/lang/String;

.field private final e:Lbvx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbvy;Ljava/lang/String;Lbvx;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    iput-object p1, p0, Lbvu;->a:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lbvu;->b:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lbvu;->c:Lbvy;

    .line 125
    iput-object p4, p0, Lbvu;->d:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lbvu;->e:Lbvx;

    .line 127
    return-void
.end method

.method private varargs a()Lbvt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbvt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lbvu;->a:Landroid/content/Context;

    iget-object v1, p0, Lbvu;->b:Ljava/lang/String;

    iget-object v2, p0, Lbvu;->d:Ljava/lang/String;

    iget-object v3, p0, Lbvu;->c:Lbvy;

    invoke-static {v0, v1, v2, v3}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbvy;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v0, Lbvt;

    invoke-direct {v0, v1}, Lbvt;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 136
    new-instance v0, Lbvt;

    invoke-direct {v0, v1}, Lbvt;-><init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lbvu;->a()Lbvt;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lbvt;

    iget-object v0, p1, Lbvt;->b:Lcom/sina/weibo/sdk/exception/WeiboException;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbvu;->e:Lbvx;

    invoke-interface {v1, v0}, Lbvx;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbvu;->e:Lbvx;

    iget-object v0, p1, Lbvt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lbvx;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
