.class final Ldhe;
.super Ljava/lang/Object;
.source "AppInstalledFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 461
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 463
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 465
    return-void
.end method
