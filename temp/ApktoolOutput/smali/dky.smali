.class final Ldky;
.super Ljava/lang/Object;
.source "ActionPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ldkx;


# direct methods
.method constructor <init>(Ldkx;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Ldky;->a:Ldkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DOWNLOAD_CLEAR_TASKS_ACTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    iget-object v3, p0, Ldky;->a:Ldkx;

    iget-object v3, v3, Ldkx;->a:Lcom/wandoujia/api/proto/Action;

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 150
    return-void
.end method
