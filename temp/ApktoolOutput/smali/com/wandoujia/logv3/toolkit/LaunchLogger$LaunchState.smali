.class public final enum Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;
.super Ljava/lang/Enum;
.source "LaunchLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

.field public static final enum LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

.field public static final enum NOT_LAUNCH:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

.field public static final enum USER_WANNA_CLOSE:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    const-string v1, "NOT_LAUNCH"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->NOT_LAUNCH:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    .line 42
    new-instance v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    const-string v1, "LAUNCHED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    .line 43
    new-instance v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    const-string v1, "USER_WANNA_CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->USER_WANNA_CLOSE:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->NOT_LAUNCH:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->USER_WANNA_CLOSE:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->$VALUES:[Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->$VALUES:[Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    return-object v0
.end method
