.class public final enum Lcom/wandoujia/update/toolkit/UpdateClient$Step;
.super Ljava/lang/Enum;
.source "UpdateClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/update/toolkit/UpdateClient$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/update/toolkit/UpdateClient$Step;

.field public static final enum ASK_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

.field public static final enum DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

.field public static final enum GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

.field public static final enum STOP:Lcom/wandoujia/update/toolkit/UpdateClient$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    const-string v1, "GET_UPDATE_INFO"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/update/toolkit/UpdateClient$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    new-instance v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    const-string v1, "ASK_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/update/toolkit/UpdateClient$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->ASK_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    new-instance v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    const-string v1, "DOWNLOAD_AND_INSTALL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/update/toolkit/UpdateClient$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    new-instance v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/update/toolkit/UpdateClient$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->STOP:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->GET_UPDATE_INFO:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->ASK_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->DOWNLOAD_AND_INSTALL:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->STOP:Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->$VALUES:[Lcom/wandoujia/update/toolkit/UpdateClient$Step;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/update/toolkit/UpdateClient$Step;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/update/toolkit/UpdateClient$Step;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/update/toolkit/UpdateClient$Step;->$VALUES:[Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    invoke-virtual {v0}, [Lcom/wandoujia/update/toolkit/UpdateClient$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/update/toolkit/UpdateClient$Step;

    return-object v0
.end method
