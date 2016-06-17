.class public final Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.super Ljava/lang/Object;
.source "SsoHandler.java"


# instance fields
.field public a:Lbux;

.field public b:Lbuv;

.field public c:Landroid/app/Activity;

.field public d:I

.field public e:Lbuj;

.field public f:Landroid/content/ServiceConnection;

.field private g:Lbut;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbut;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lbuw;

    invoke-direct {v0, p0}, Lbuw;-><init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->f:Landroid/content/ServiceConnection;

    .line 119
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    .line 120
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->g:Lbut;

    .line 121
    new-instance v0, Lbux;

    invoke-direct {v0, p1, p2}, Lbux;-><init>(Landroid/content/Context;Lbut;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    .line 122
    invoke-static {p1}, Lbui;->a(Landroid/content/Context;)Lbui;

    move-result-object v0

    invoke-virtual {v0}, Lbui;->a()Lbuj;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->e:Lbuj;

    .line 123
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    invoke-static {v0}, Lbvz;->a(Landroid/content/Context;)Lbvz;

    move-result-object v0

    iget-object v1, p2, Lbut;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbvz;->a(Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    iget v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->d:I

    if-ne p1, v0, :cond_0

    .line 221
    if-ne p2, v4, :cond_a

    .line 222
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->e:Lbuj;

    invoke-static {v0, v1, p3}, Ld;->a(Landroid/content/Context;Lbuj;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_2

    .line 229
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_2
    if-eqz v0, :cond_6

    .line 234
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-interface {v0}, Lbuv;->a()V

    goto :goto_0

    .line 239
    :cond_4
    const-string v1, "error_description"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_5

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_5
    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    .line 246
    new-instance v3, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    invoke-direct {v3, v0, p2, v1}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    invoke-interface {v2, v3}, Lbuv;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 250
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_8

    new-instance v0, Lbuu;

    invoke-direct {v0}, Lbuu;-><init>()V

    const-string v2, "uid"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lbuu;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbuu;->a:Ljava/lang/String;

    const-string v2, "access_token"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lbuu;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbuu;->b:Ljava/lang/String;

    const-string v2, "expires_in"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lbuu;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lbuu;->d:J

    :cond_7
    const-string v2, "refresh_token"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lbuu;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbuu;->c:Ljava/lang/String;

    .line 253
    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lbuu;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login Success! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbuu;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-interface {v0, v1}, Lbuv;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 251
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-virtual {v0, v1}, Lbux;->a(Lbuv;)V

    goto/16 :goto_0

    .line 264
    :cond_a
    if-nez p2, :cond_0

    .line 267
    if-eqz p3, :cond_b

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "error"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    .line 270
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    .line 271
    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 273
    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-direct {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    invoke-interface {v0, v1}, Lbuv;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto/16 :goto_0

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->b:Lbuv;

    invoke-interface {v0}, Lbuv;->a()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 340
    const/4 v0, 0x1

    .line 341
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 343
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->a:Lbux;

    iget-object v3, v3, Lbux;->a:Lbut;

    invoke-virtual {v3}, Lbut;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    const-string v3, "_weibo_command_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v3, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v3, "aid"

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->g:Lbut;

    iget-object v5, v5, Lbut;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Ld;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    invoke-static {v3, v2}, Ld;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    :goto_0
    return v1

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->g:Lbut;

    iget-object v4, v4, Lbut;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Ld;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 363
    const-string v4, "aid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->c:Landroid/app/Activity;

    iget v4, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->d:I

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 375
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
