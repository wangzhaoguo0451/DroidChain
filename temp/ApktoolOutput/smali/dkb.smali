.class final Ldkb;
.super Ljava/lang/Object;
.source "NotifyCardManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;

    check-cast p2, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;

    invoke-interface {p1}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;->a()Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    move-result-object v0

    invoke-interface {p2}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;->a()Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method
