.class public final enum Lcom/wandoujia/p4/configs/Const$SortType;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/configs/Const$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/configs/Const$SortType;

.field public static final enum DEFAULT:Lcom/wandoujia/p4/configs/Const$SortType;

.field public static final enum LATEST:Lcom/wandoujia/p4/configs/Const$SortType;

.field public static final enum WEEKLY:Lcom/wandoujia/p4/configs/Const$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2731
    new-instance v0, Lcom/wandoujia/p4/configs/Const$SortType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/configs/Const$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$SortType;->DEFAULT:Lcom/wandoujia/p4/configs/Const$SortType;

    new-instance v0, Lcom/wandoujia/p4/configs/Const$SortType;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/configs/Const$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$SortType;->WEEKLY:Lcom/wandoujia/p4/configs/Const$SortType;

    new-instance v0, Lcom/wandoujia/p4/configs/Const$SortType;

    const-string v1, "LATEST"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/configs/Const$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/configs/Const$SortType;->LATEST:Lcom/wandoujia/p4/configs/Const$SortType;

    .line 2730
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/configs/Const$SortType;

    sget-object v1, Lcom/wandoujia/p4/configs/Const$SortType;->DEFAULT:Lcom/wandoujia/p4/configs/Const$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/configs/Const$SortType;->WEEKLY:Lcom/wandoujia/p4/configs/Const$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/configs/Const$SortType;->LATEST:Lcom/wandoujia/p4/configs/Const$SortType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/configs/Const$SortType;->$VALUES:[Lcom/wandoujia/p4/configs/Const$SortType;

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
    .line 2730
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/configs/Const$SortType;
    .locals 1
    .parameter

    .prologue
    .line 2730
    const-class v0, Lcom/wandoujia/p4/configs/Const$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/configs/Const$SortType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/configs/Const$SortType;
    .locals 1

    .prologue
    .line 2730
    sget-object v0, Lcom/wandoujia/p4/configs/Const$SortType;->$VALUES:[Lcom/wandoujia/p4/configs/Const$SortType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/configs/Const$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/configs/Const$SortType;

    return-object v0
.end method
