.class public abstract enum Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;
.super Ljava/lang/Enum;
.source "AppUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum PINYIN_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum PINYIN_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum POSITION_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum SIZE_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum SIZE_DECS:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum UPDATE_TIME_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

.field public static final enum UPDATE_TIME_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$1;

    const-string v1, "SIZE_ASC"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->SIZE_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 124
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$2;

    const-string v1, "POSITION_ASC"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->POSITION_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 130
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$3;

    const-string v1, "SIZE_DECS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->SIZE_DECS:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 136
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$4;

    const-string v1, "PINYIN_ASC"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->PINYIN_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 142
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$5;

    const-string v1, "PINYIN_DESC"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->PINYIN_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 148
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$6;

    const-string v1, "UPDATE_TIME_ASC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->UPDATE_TIME_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 154
    new-instance v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$7;

    const-string v1, "UPDATE_TIME_DESC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->UPDATE_TIME_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    sget-object v1, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->SIZE_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->POSITION_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->SIZE_DECS:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->PINYIN_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->PINYIN_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->UPDATE_TIME_ASC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->UPDATE_TIME_DESC:Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILhlc;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;
    .locals 1
    .parameter

    .prologue
    .line 117
    const-class v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/util/AppUtils$SortType;

    return-object v0
.end method


# virtual methods
.method protected abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end method
