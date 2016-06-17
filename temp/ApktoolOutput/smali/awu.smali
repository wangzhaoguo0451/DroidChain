.class public final Lawu;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lawu;->a:Landroid/content/Context;

    iput-object v0, p0, Lawu;->b:Landroid/content/Context;

    return-void
.end method

.method protected static a(Laws;)Laxj;
    .locals 1

    new-instance v0, Laxj;

    invoke-direct {v0, p0}, Laxj;-><init>(Laws;)V

    return-object v0
.end method

.method protected static b(Laws;)Laxo;
    .locals 1

    new-instance v0, Laxo;

    invoke-direct {v0, p0}, Laxo;-><init>(Laws;)V

    return-object v0
.end method

.method public static d(Laws;)Laww;
    .locals 1

    new-instance v0, Laww;

    invoke-direct {v0, p0}, Laww;-><init>(Laws;)V

    return-object v0
.end method

.method public static e(Laws;)Laxs;
    .locals 1

    new-instance v0, Laxs;

    invoke-direct {v0, p0}, Laxs;-><init>(Laws;)V

    return-object v0
.end method

.method public static f(Laws;)Lawf;
    .locals 1

    new-instance v0, Lawf;

    invoke-direct {v0, p0}, Lawf;-><init>(Laws;)V

    return-object v0
.end method


# virtual methods
.method final c(Laws;)Laxe;
    .locals 1

    new-instance v0, Laxe;

    invoke-direct {v0, p1, p0}, Laxe;-><init>(Laws;Lawu;)V

    return-object v0
.end method
