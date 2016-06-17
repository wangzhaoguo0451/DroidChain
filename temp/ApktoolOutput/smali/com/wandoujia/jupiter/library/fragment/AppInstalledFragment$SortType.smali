.class public final enum Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;
.super Ljava/lang/Enum;
.source "AppInstalledFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

.field public static final enum NAME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

.field public static final enum SIZE:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

.field public static final enum TIME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->TIME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    new-instance v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->NAME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    new-instance v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->SIZE:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->TIME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->NAME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->SIZE:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->$VALUES:[Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;
    .locals 1
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->$VALUES:[Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    return-object v0
.end method
