.class public final enum Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;
.super Ljava/lang/Enum;
.source "INotifyCardGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

.field public static final enum NOTIFICATION:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

.field public static final enum OTHER:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->NOTIFICATION:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    new-instance v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->OTHER:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    sget-object v1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->NOTIFICATION:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->OTHER:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->$VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->$VALUES:[Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$EntryType;

    return-object v0
.end method
