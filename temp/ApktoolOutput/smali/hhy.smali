.class public Lhhy;
.super Ljava/lang/Object;
.source "BaseNavigationManager.java"

# interfaces
.implements Lhhp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return v0

    .line 119
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 120
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 139
    .line 141
    iget-object v1, p1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 143
    :try_start_0
    iget-object v1, p1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    .line 145
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {p0, v3, p2}, Lcom/wandoujia/base/utils/IntentUtils;->canHandleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-static {p0, v3}, Lhhy;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    :cond_1
    move-object v3, v2

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 159
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :try_start_2
    iget-object v4, p1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :goto_2
    if-eqz v1, :cond_3

    invoke-static {p0, v1, p2}, Lcom/wandoujia/base/utils/IntentUtils;->canHandleIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-static {p0, v1}, Lhhy;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    :cond_3
    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-static {p0, v3}, Lhhy;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    :cond_4
    if-eqz v1, :cond_5

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-static {p0, v1}, Lhhy;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 90
    invoke-static {p1, v1}, Lcom/wandoujia/base/utils/IntentUtils;->queryIntentActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 93
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "page_api_url"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_1
    const-string v2, "page_intent_uri"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 100
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    .line 109
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass must implement it!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
