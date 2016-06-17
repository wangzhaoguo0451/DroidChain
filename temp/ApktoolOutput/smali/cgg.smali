.class final Lcgg;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcge;


# direct methods
.method constructor <init>(Lcge;)V
    .locals 0

    iput-object p1, p0, Lcgg;->a:Lcge;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "http://uniview.wostore.cn/log-app/updateErrorMsg"

    invoke-static {v1}, Lcge;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcgg;->a:Lcge;

    iget-object v1, v1, Lcge;->a:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcgg;->a:Lcge;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcge;->a:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcgg;->a:Lcge;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcgg;->a:Lcge;

    iget-object v1, v1, Lcge;->b:Landroid/content/Context;

    const-string v2, "errormsgClinetVersion"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "clinetVersion"

    const-string v3, "1.0.0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgg;->a:Lcge;

    iget-object v1, p0, Lcgg;->a:Lcge;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lcge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcge;->b:Landroid/content/Context;

    const-string v2, "errormsgClinetVersion"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "clinetVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcgg;->a:Lcge;

    const-string v1, "MENO"

    invoke-virtual {v0, v1}, Lcge;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcge;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcgh;

    iget-object v2, p0, Lcgg;->a:Lcge;

    iget-object v2, v2, Lcge;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcgh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lcgh;->a(Z)V

    invoke-virtual {v1}, Lcgh;->a()V

    invoke-virtual {v1, v0}, Lcgh;->a(Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
