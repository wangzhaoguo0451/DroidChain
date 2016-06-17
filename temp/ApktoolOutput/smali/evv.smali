.class public final Levv;
.super Landroid/os/AsyncTask;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Levv;-><init>(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)V

    return-void
.end method

.method private varargs a([Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_1

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    .line 135
    aget-object v3, p1, v0

    .line 136
    iget-object v2, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->c(Lcom/wandoujia/p4/app/detail/activity/ReportActivity;)Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$ReportInfo;->downloadUrl:Ljava/lang/String;

    iput-object v2, v3, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->packageurl:Ljava/lang/String;

    move v2, v0

    .line 138
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    .line 139
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, v3, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->packageurl:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.handle-redirects"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 141
    new-instance v4, Lfwu;

    invoke-direct {v4}, Lfwu;-><init>()V

    .line 142
    iput-object v0, v4, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 143
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v4}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 144
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_0

    .line 145
    new-instance v4, Ljava/net/URI;

    iget-object v5, v3, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->packageurl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URI;

    const-string v6, "Location"

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;->packageurl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    :cond_0
    :goto_1
    :try_start_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://12321.wandoujia.com/post"

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lfwz;->a()Lcvo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcvo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 163
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Type"

    const-string v5, "application/json; charset=utf-8"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 165
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 166
    new-instance v2, Lfwu;

    invoke-direct {v2}, Lfwu;-><init>()V

    .line 167
    iput-object v0, v2, Lfwu;->a:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 168
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    :goto_3
    move-object v0, v1

    .line 172
    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 176
    goto :goto_2

    .line 170
    :catch_2
    move-exception v0

    goto :goto_3

    .line 154
    :catch_3
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 130
    check-cast p1, [Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;

    invoke-direct {p0, p1}, Levv;->a([Lcom/wandoujia/p4/app/detail/activity/ReportActivity$SubmitForm;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 130
    check-cast p1, Lorg/apache/http/HttpResponse;

    iget-object v0, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    iget-object v1, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    const v2, 0x7f0e0127

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    iget-object v1, p0, Levv;->a:Lcom/wandoujia/p4/app/detail/activity/ReportActivity;

    const v2, 0x7f0e0126

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/app/detail/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
