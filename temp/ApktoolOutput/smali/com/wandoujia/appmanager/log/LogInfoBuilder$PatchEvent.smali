.class public final enum Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;
.super Ljava/lang/Enum;
.source "LogInfoBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum FAILED_OTHER_REASONS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum FAILED_TO_DECODE_PATCH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum FAILED_TO_GENERATE_APK_PATH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum FAILED_TO_GET_APK_INFO:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum STARTED:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

.field public static final enum SUCCESS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->STARTED:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "FAILED_TO_GENERATE_APK_PATH"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_GENERATE_APK_PATH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "FAILED_TO_GET_APK_INFO"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_GET_APK_INFO:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    .line 55
    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "FAILED_TO_DECODE_PATCH"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_DECODE_PATCH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "FAILED_OTHER_REASONS"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_OTHER_REASONS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    new-instance v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->SUCCESS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    sget-object v1, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->STARTED:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_GENERATE_APK_PATH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_GET_APK_INFO:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_TO_DECODE_PATCH:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->FAILED_OTHER_REASONS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->SUCCESS:Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->$VALUES:[Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->$VALUES:[Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    invoke-virtual {v0}, [Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/appmanager/log/LogInfoBuilder$PatchEvent;

    return-object v0
.end method
