.class public final enum Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;
.super Ljava/lang/Enum;
.source "SearchConst.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

.field public static final enum APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

.field public static final enum GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;


# instance fields
.field private pattern:I

.field private subTypeKey:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private typeKey:Ljava/lang/String;

.field private typeStringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 65
    new-instance v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    const-string v1, "APP"

    const-string v3, "APPS"

    sget-object v5, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app"

    sget v7, Lcom/wandoujia/launcher_base/R$string;->vertical_title_app:I

    invoke-direct/range {v0 .. v7}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    .line 67
    new-instance v5, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    const-string v6, "GAME"

    const-string v8, "APPS"

    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v0}, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->name()Ljava/lang/String;

    move-result-object v10

    const-string v11, "game"

    sget v12, Lcom/wandoujia/launcher_base/R$string;->vertical_title_game:I

    move v7, v4

    invoke-direct/range {v5 .. v12}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v5, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    .line 64
    new-array v0, v9, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->typeKey:Ljava/lang/String;

    .line 80
    iput p4, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->pattern:I

    .line 81
    iput-object p6, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->tabId:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    .line 83
    iput p7, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->typeStringId:I

    .line 84
    return-void
.end method

.method public static parseFrom(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;
    .locals 5
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->values()[Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 112
    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    :goto_1
    return-object v0

    .line 111
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->$VALUES:[Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    return-object v0
.end method


# virtual methods
.method public final getPattern()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->pattern:I

    return v0
.end method

.method public final getSubTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->subTypeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->typeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeStringId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->typeStringId:I

    return v0
.end method
