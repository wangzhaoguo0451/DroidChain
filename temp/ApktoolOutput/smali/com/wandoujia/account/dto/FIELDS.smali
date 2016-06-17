.class public final enum Lcom/wandoujia/account/dto/FIELDS;
.super Ljava/lang/Enum;
.source "FIELDS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/dto/FIELDS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum BASIC_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum COMPLETE_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum COMPLETE_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum PRIVICY_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

.field public static final enum SIMPLE_INFO:Lcom/wandoujia/account/dto/FIELDS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "BASIC_DEVICE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->BASIC_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "COMPLETE_DEVICE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->COMPLETE_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "BASIC_SOCIAL"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "COMPLETE_SOCIAL"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->COMPLETE_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "PRIVICY_SOCIAL"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->PRIVICY_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    new-instance v0, Lcom/wandoujia/account/dto/FIELDS;

    const-string v1, "SIMPLE_INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/dto/FIELDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->SIMPLE_INFO:Lcom/wandoujia/account/dto/FIELDS;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/account/dto/FIELDS;

    sget-object v1, Lcom/wandoujia/account/dto/FIELDS;->BASIC_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/dto/FIELDS;->COMPLETE_DEVICE:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/account/dto/FIELDS;->BASIC_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/account/dto/FIELDS;->COMPLETE_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/account/dto/FIELDS;->PRIVICY_SOCIAL:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/account/dto/FIELDS;->SIMPLE_INFO:Lcom/wandoujia/account/dto/FIELDS;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/account/dto/FIELDS;->$VALUES:[Lcom/wandoujia/account/dto/FIELDS;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/dto/FIELDS;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/wandoujia/account/dto/FIELDS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/dto/FIELDS;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/dto/FIELDS;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/wandoujia/account/dto/FIELDS;->$VALUES:[Lcom/wandoujia/account/dto/FIELDS;

    invoke-virtual {v0}, [Lcom/wandoujia/account/dto/FIELDS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/dto/FIELDS;

    return-object v0
.end method
