.class public final enum Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;
.super Ljava/lang/Enum;
.source "DataLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum REMOVE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum REMOVE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

.field public static final enum UPDATE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;


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
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 13
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 14
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 15
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 19
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "UPDATE_RANGE"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 23
    new-instance v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    const-string v1, "REMOVE_RANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->ADD:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->UPDATE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE_RANGE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->$VALUES:[Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->$VALUES:[Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    invoke-virtual {v0}, [Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    return-object v0
.end method
