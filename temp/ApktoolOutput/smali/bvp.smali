.class final Lbvp;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbvo;

.field private final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lbvo;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvp;->a:Lbvo;

    iput-object p2, p0, Lbvp;->b:Lorg/json/JSONObject;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lbvp;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lbvp;->a:Lbvo;

    iget-object v0, v0, Lbvo;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    iget-object v1, p0, Lbvp;->b:Lorg/json/JSONObject;

    const-string v2, "followed_by"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lbvp;->a:Lbvo;

    iget-object v0, v0, Lbvo;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    .line 181
    return-void
.end method
