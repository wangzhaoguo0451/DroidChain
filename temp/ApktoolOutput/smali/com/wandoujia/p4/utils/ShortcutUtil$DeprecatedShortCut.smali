.class public final enum Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;
.super Ljava/lang/Enum;
.source "ShortcutUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

.field public static final enum CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

.field public static final enum EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

.field public static final enum MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

.field public static final enum VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

.field public static final enum WALLPAPER:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;


# instance fields
.field private data:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    const-string v1, "VIDEO"

    const v2, 0x7f0e0619

    const-string v3, "shortcut://video"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    .line 48
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    const-string v1, "WALLPAPER"

    const v2, 0x7f0e065a

    const-string v3, "shortcut://wallpaper"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->WALLPAPER:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    .line 49
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    const-string v1, "CLEAN"

    const v2, 0x7f0e05af

    const-string v3, "shortcut://clean"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    .line 50
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    const-string v1, "EBOOK"

    const v2, 0x7f0e02ab

    const-string v3, "shortcut://ebook"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    .line 51
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    const-string v1, "MUSIC"

    const v2, 0x7f0e05f3

    const-string v3, "shortcut://music"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->WALLPAPER:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    aput-object v1, v0, v8

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->$VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->title:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->data:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->$VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    return-object v0
.end method
