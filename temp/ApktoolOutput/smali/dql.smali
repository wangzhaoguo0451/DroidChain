.class final Ldql;
.super Lhhl;
.source "SharePresenter.java"


# instance fields
.field final synthetic a:Ldqk;

.field private synthetic b:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Ldqk;Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Ldql;->a:Ldqk;

    iput-object p3, p0, Ldql;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0, p2}, Lhhl;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    iget-object v0, p0, Ldql;->b:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "docid"

    iget-object v1, p0, Ldql;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    const-string v0, "shareType"

    sget-object v1, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->ITEM:Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ShareTypeEnum$ShareType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v4, Ldqm;

    invoke-direct {v4, p0}, Ldqm;-><init>(Ldql;)V

    .line 63
    new-instance v5, Ldqn;

    invoke-direct {v5}, Ldqn;-><init>()V

    .line 69
    new-instance v0, Lhey;

    const-string v1, "http://ripple.wandoujia.com/api/v1/share/getcontent.proto"

    const-class v3, Lcom/wandoujia/api/proto/HttpResponse;

    invoke-direct/range {v0 .. v6}, Lhey;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lagu;Lagt;B)V

    .line 72
    iput-boolean v6, v0, Lcom/android/volley/Request;->g:Z

    .line 73
    invoke-virtual {v0}, Lhey;->j()V

    .line 75
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->ITEM:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SHARE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "share"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ldql;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 82
    const/4 v0, 0x1

    return v0
.end method
