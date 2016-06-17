.class final Ldiw;
.super Ljava/lang/Object;
.source "AppInstalledCardChoosePresenter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/wandoujia/ripple_framework/model/Model;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Ldiw;->a:Landroid/view/View;

    iput-object p2, p0, Ldiw;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 74
    iget-object v0, p0, Ldiw;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Ldiw;->b:Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Ldiw;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 76
    new-instance v1, Ldix;

    invoke-direct {v1}, Ldix;-><init>()V

    .line 77
    iget-object v0, p0, Ldiw;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    iput-object v0, v1, Ldix;->a:Ljava/lang/String;

    .line 78
    iput-boolean v4, v1, Ldix;->b:Z

    .line 79
    sget-object v0, Lham;->f:Lham;

    const-string v2, "event_bus"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v2, Lhaq;

    sget-object v3, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-direct {v2, v3, v1}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhrx;->d(Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 85
    return v4
.end method
