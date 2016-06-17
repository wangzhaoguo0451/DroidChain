.class public final enum Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
.super Ljava/lang/Enum;
.source "SubscribeItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

.field public static final enum APP:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "APP"
    .end annotation
.end field

.field public static final enum EBOOK:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "EBOOK"
    .end annotation
.end field

.field public static final enum GAME:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "GAME"
    .end annotation
.end field

.field public static final enum MUSIC:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "MUSIC"
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "VIDEO"
    .end annotation
.end field

.field public static final enum WALLPAPER:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .annotation runtime Lcwj;
        a = "WALLPAPER"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->APP:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 14
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->VIDEO:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "EBOOK"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->EBOOK:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->MUSIC:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "WALLPAPER"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->WALLPAPER:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    const-string v1, "GAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->GAME:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->APP:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->VIDEO:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->EBOOK:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->MUSIC:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->WALLPAPER:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->GAME:Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeItemType;

    return-object v0
.end method
