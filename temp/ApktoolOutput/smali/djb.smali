.class final Ldjb;
.super Ljava/lang/Object;
.source "AppInstalledSpinnerPresenter.java"

# interfaces
.implements Lhnr;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-static {}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->values()[Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 40
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 43
    invoke-static {p2}, Ldja;->a(I)I

    .line 44
    return-void
.end method
