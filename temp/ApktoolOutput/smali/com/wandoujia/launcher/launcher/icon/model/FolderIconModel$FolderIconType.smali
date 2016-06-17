.class public final enum Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;
.super Ljava/lang/Enum;
.source "FolderIconModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

.field public static final enum CASUAL:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

.field public static final enum DOWNLOAD:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

.field public static final enum EXCLUSIVE:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

.field public static final enum GAME:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

.field public static final enum SUGGESTION:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->GAME:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    new-instance v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->DOWNLOAD:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    new-instance v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    const-string v1, "EXCLUSIVE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->EXCLUSIVE:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    new-instance v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    const-string v1, "SUGGESTION"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->SUGGESTION:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    new-instance v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    const-string v1, "CASUAL"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->CASUAL:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    sget-object v1, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->GAME:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->DOWNLOAD:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->EXCLUSIVE:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->SUGGESTION:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->CASUAL:Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->$VALUES:[Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->$VALUES:[Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/icon/model/FolderIconModel$FolderIconType;

    return-object v0
.end method
