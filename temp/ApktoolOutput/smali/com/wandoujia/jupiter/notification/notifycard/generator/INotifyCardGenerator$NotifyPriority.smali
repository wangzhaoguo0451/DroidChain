.class public final enum Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;
.super Ljava/lang/Enum;
.source "INotifyCardGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

.field public static final enum HIGH:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

.field public static final enum LOW:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

.field public static final enum NORMAL:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->HIGH:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    new-instance v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->NORMAL:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    new-instance v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->LOW:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    sget-object v1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->HIGH:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->NORMAL:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->LOW:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->$VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->$VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    return-object v0
.end method
