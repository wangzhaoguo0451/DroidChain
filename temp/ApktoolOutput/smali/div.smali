.class final Ldiv;
.super Ljava/lang/Object;
.source "AppInstalledCardChoosePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/model/Model;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Ldiu;


# direct methods
.method constructor <init>(Ldiu;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Ldiv;->c:Ldiu;

    iput-object p2, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iput-object p3, p0, Ldiv;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    iget-boolean v0, v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a:Z

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, p0, Ldiv;->c:Ldiu;

    invoke-virtual {v3}, Ldiu;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, v0

    .line 55
    :goto_1
    new-instance v4, Ldix;

    invoke-direct {v4}, Ldix;-><init>()V

    .line 56
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v0, v4, Ldix;->a:Ljava/lang/String;

    .line 57
    if-nez v1, :cond_2

    move v0, v3

    :goto_2
    iput-boolean v0, v4, Ldix;->b:Z

    .line 58
    sget-object v0, Lham;->f:Lham;

    const-string v5, "event_bus"

    invoke-virtual {v0, v5}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v5, Lhaq;

    sget-object v6, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-direct {v5, v6, v4}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lhrx;->d(Ljava/lang/Object;)V

    .line 61
    if-eqz v1, :cond_3

    .line 62
    iget-object v0, p0, Ldiv;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 57
    goto :goto_2

    .line 65
    :cond_3
    iget-object v0, p0, Ldiv;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldiv;->a:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method
