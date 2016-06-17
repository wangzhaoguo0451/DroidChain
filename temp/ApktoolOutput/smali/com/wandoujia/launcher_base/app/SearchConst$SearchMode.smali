.class public final enum Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

.field public static final enum MIXED:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

.field public static final enum VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;


# instance fields
.field private modeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    const-string v1, "MIXED"

    const-string v2, "MIXED"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->MIXED:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    .line 16
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    const-string v1, "VERTICAL"

    const-string v2, "VERTICAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->MIXED:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->modeKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    return-object v0
.end method


# virtual methods
.method public final getModeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->modeKey:Ljava/lang/String;

    return-object v0
.end method
