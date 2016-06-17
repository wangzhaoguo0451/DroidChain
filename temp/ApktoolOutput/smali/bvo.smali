.class public final Lbvo;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Lbvx;


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvo;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    invoke-static {}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v0, p0, Lbvo;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    .line 167
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a()Ljava/lang/String;

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lbvo;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lbvp;

    invoke-direct {v2, p0, v0}, Lbvp;-><init>(Lbvo;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
