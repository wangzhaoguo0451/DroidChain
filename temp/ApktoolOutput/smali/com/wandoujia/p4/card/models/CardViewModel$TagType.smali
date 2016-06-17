.class public final enum Lcom/wandoujia/p4/card/models/CardViewModel$TagType;
.super Ljava/lang/Enum;
.source "CardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/card/models/CardViewModel$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

.field public static final enum CUSTOM:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

.field public static final enum NONE:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

.field public static final enum TAG:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

.field public static final enum VERTICAL:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->VERTICAL:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    .line 106
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    const-string v1, "TAG"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->TAG:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    .line 107
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->NONE:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    .line 108
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->CUSTOM:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->VERTICAL:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->TAG:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->NONE:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->CUSTOM:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/card/models/CardViewModel$TagType;
    .locals 1
    .parameter

    .prologue
    .line 104
    const-class v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/card/models/CardViewModel$TagType;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    return-object v0
.end method
