.class public final enum Lcom/wandoujia/p4/configs/Const$AdsType;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/configs/Const$AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/configs/Const$AdsType;

.field public static final enum BOTH:Lcom/wandoujia/p4/configs/Const$AdsType;

.field public static final enum EMBEDED:Lcom/wandoujia/p4/configs/Const$AdsType;

.field public static final enum NONE:Lcom/wandoujia/p4/configs/Const$AdsType;

.field public static final enum POP:Lcom/wandoujia/p4/configs/Const$AdsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/configs/Const$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->NONE:Lcom/wandoujia/p4/configs/Const$AdsType;

    new-instance v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    const-string v1, "EMBEDED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/configs/Const$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->EMBEDED:Lcom/wandoujia/p4/configs/Const$AdsType;

    new-instance v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    const-string v1, "POP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/configs/Const$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->POP:Lcom/wandoujia/p4/configs/Const$AdsType;

    new-instance v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/configs/Const$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->BOTH:Lcom/wandoujia/p4/configs/Const$AdsType;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/configs/Const$AdsType;

    sget-object v1, Lcom/wandoujia/p4/configs/Const$AdsType;->NONE:Lcom/wandoujia/p4/configs/Const$AdsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/configs/Const$AdsType;->EMBEDED:Lcom/wandoujia/p4/configs/Const$AdsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/configs/Const$AdsType;->POP:Lcom/wandoujia/p4/configs/Const$AdsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/configs/Const$AdsType;->BOTH:Lcom/wandoujia/p4/configs/Const$AdsType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->$VALUES:[Lcom/wandoujia/p4/configs/Const$AdsType;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/configs/Const$AdsType;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/configs/Const$AdsType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/configs/Const$AdsType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/wandoujia/p4/configs/Const$AdsType;->$VALUES:[Lcom/wandoujia/p4/configs/Const$AdsType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/configs/Const$AdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/configs/Const$AdsType;

    return-object v0
.end method
