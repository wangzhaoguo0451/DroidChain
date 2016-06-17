.class final Laqd;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"

# interfaces
.implements Laob;


# instance fields
.field private synthetic a:Lajt;

.field private synthetic b:Landroid/app/ActivityManager;

.field private synthetic c:Laog;

.field private synthetic d:Lakt;


# direct methods
.method constructor <init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Laqd;->a:Lajt;

    iput-object p2, p0, Laqd;->b:Landroid/app/ActivityManager;

    iput-object p3, p0, Laqd;->c:Laog;

    iput-object p4, p0, Laqd;->d:Lakt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lani;Lank;)Lanw;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 338
    new-instance v0, Lanw;

    iget-object v1, p0, Laqd;->a:Lajt;

    iget-object v2, p0, Laqd;->b:Landroid/app/ActivityManager;

    iget-object v3, p0, Laqd;->c:Laog;

    iget-object v4, p0, Laqd;->d:Lakt;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lanw;-><init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;Lani;Lank;)V

    return-object v0
.end method
