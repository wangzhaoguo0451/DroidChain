.class public final enum Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;
.super Ljava/lang/Enum;
.source "ShortcutUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum APP:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum DEFAULT:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum MUSIC_FM:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->DEFAULT:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->APP:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "EBOOK"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "CLEAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    new-instance v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    const-string v1, "MUSIC_FM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->MUSIC_FM:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->DEFAULT:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->APP:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->VIDEO:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->MUSIC:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->EBOOK:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->CLEAN:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->MUSIC_FM:Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->$VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->$VALUES:[Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/utils/ShortcutUtil$ShortcutType;

    return-object v0
.end method
