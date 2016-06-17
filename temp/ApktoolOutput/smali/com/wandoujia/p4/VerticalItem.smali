.class public abstract enum Lcom/wandoujia/p4/VerticalItem;
.super Ljava/lang/Enum;
.source "VerticalItem.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/VerticalItem;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/VerticalItem;

.field public static final enum ANIME:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum APP:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum COMMUNITY:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum EBOOK:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum GAME:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum HOME:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum MUSIC:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum ONLINE_GAME:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum THEME:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum TOOLS:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum VIDEO:Lcom/wandoujia/p4/VerticalItem;

.field public static final enum WALLPAPER:Lcom/wandoujia/p4/VerticalItem;


# instance fields
.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$1;

    const-string v1, "HOME"

    const-string v2, "home"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/VerticalItem$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->HOME:Lcom/wandoujia/p4/VerticalItem;

    .line 68
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$2;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/VerticalItem$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->APP:Lcom/wandoujia/p4/VerticalItem;

    .line 114
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$3;

    const-string v1, "GAME"

    const-string v2, "game"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/VerticalItem$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->GAME:Lcom/wandoujia/p4/VerticalItem;

    .line 160
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$4;

    const-string v1, "VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/VerticalItem$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->VIDEO:Lcom/wandoujia/p4/VerticalItem;

    .line 206
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$5;

    const-string v1, "ANIME"

    const-string v2, "anime"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/VerticalItem$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->ANIME:Lcom/wandoujia/p4/VerticalItem;

    .line 252
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$6;

    const-string v1, "MUSIC"

    const/4 v2, 0x5

    const-string v3, "music"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->MUSIC:Lcom/wandoujia/p4/VerticalItem;

    .line 298
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$7;

    const-string v1, "EBOOK"

    const/4 v2, 0x6

    const-string v3, "ebook"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->EBOOK:Lcom/wandoujia/p4/VerticalItem;

    .line 344
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$8;

    const-string v1, "WALLPAPER"

    const/4 v2, 0x7

    const-string v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->WALLPAPER:Lcom/wandoujia/p4/VerticalItem;

    .line 391
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$9;

    const-string v1, "ONLINE_GAME"

    const/16 v2, 0x8

    const-string v3, "online_game"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->ONLINE_GAME:Lcom/wandoujia/p4/VerticalItem;

    .line 437
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$10;

    const-string v1, "THEME"

    const/16 v2, 0x9

    const-string v3, "theme"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->THEME:Lcom/wandoujia/p4/VerticalItem;

    .line 484
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$11;

    const-string v1, "TOOLS"

    const/16 v2, 0xa

    const-string v3, "tools"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$11;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->TOOLS:Lcom/wandoujia/p4/VerticalItem;

    .line 530
    new-instance v0, Lcom/wandoujia/p4/VerticalItem$12;

    const-string v1, "COMMUNITY"

    const/16 v2, 0xb

    const-string v3, "community"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/VerticalItem$12;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->COMMUNITY:Lcom/wandoujia/p4/VerticalItem;

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/wandoujia/p4/VerticalItem;

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->HOME:Lcom/wandoujia/p4/VerticalItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->APP:Lcom/wandoujia/p4/VerticalItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->GAME:Lcom/wandoujia/p4/VerticalItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->VIDEO:Lcom/wandoujia/p4/VerticalItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->ANIME:Lcom/wandoujia/p4/VerticalItem;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->MUSIC:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->EBOOK:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->WALLPAPER:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->ONLINE_GAME:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->THEME:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->TOOLS:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/VerticalItem;->COMMUNITY:Lcom/wandoujia/p4/VerticalItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/VerticalItem;->$VALUES:[Lcom/wandoujia/p4/VerticalItem;

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
    .line 579
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 580
    iput-object p3, p0, Lcom/wandoujia/p4/VerticalItem;->tabId:Ljava/lang/String;

    .line 581
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/p4/VerticalItem$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/VerticalItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getCoverVerticalItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/VerticalItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {}, Lesb;->f()Lfoo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->APP:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->GAME:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->VIDEO:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->MUSIC:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->WALLPAPER:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->EBOOK:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->ONLINE_GAME:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->COMMUNITY:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/wandoujia/p4/VerticalItem;->TOOLS:Lcom/wandoujia/p4/VerticalItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getVerticalItemById(I)Lcom/wandoujia/p4/VerticalItem;
    .locals 5
    .parameter

    .prologue
    .line 601
    invoke-static {}, Lcom/wandoujia/p4/VerticalItem;->values()[Lcom/wandoujia/p4/VerticalItem;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 602
    invoke-virtual {v0}, Lcom/wandoujia/p4/VerticalItem;->getVerticalId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 606
    :goto_1
    return-object v0

    .line 601
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 606
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getVerticalItemByTabId(Ljava/lang/String;)Lcom/wandoujia/p4/VerticalItem;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-object v0

    .line 619
    :cond_1
    invoke-static {}, Lcom/wandoujia/p4/VerticalItem;->values()[Lcom/wandoujia/p4/VerticalItem;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 620
    invoke-virtual {v1}, Lcom/wandoujia/p4/VerticalItem;->getTabId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 621
    goto :goto_0

    .line 619
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/VerticalItem;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/VerticalItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/VerticalItem;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/VerticalItem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/p4/VerticalItem;->$VALUES:[Lcom/wandoujia/p4/VerticalItem;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/VerticalItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/VerticalItem;

    return-object v0
.end method


# virtual methods
.method public abstract getActionBarBgRes()I
.end method

.method public abstract getActionBarIconRes()I
.end method

.method public abstract getColorRes()I
.end method

.method public abstract getCoverIconRes()I
.end method

.method public getNavigationDiversionRes()I
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getStateColorRes()I
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/wandoujia/p4/VerticalItem;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTitleRes()I
.end method

.method public abstract getVerticalId()I
.end method
