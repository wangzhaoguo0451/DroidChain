.class public final enum Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;
.super Ljava/lang/Enum;
.source "SearchConst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

.field public static final enum DAILY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

.field public static final enum WEEKLY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;


# instance fields
.field private modeKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    const-string v1, "WEEKLY"

    const-string v2, "WEEKLY"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->WEEKLY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    .line 42
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    const-string v1, "DAILY"

    const-string v2, "DAILY"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->DAILY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->WEEKLY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->DAILY:Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->modeKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;

    return-object v0
.end method


# virtual methods
.method public final getModeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchHotMode;->modeKey:Ljava/lang/String;

    return-object v0
.end method
