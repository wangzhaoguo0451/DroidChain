.class public final Lcpz;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/content/pm/PackageInfo;

.field private synthetic c:Z

.field private synthetic d:Lcpw;

.field private synthetic e:Lcpx;


# direct methods
.method public constructor <init>(Lcpx;Ljava/lang/String;Landroid/content/pm/PackageInfo;ZLcpw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcpz;->e:Lcpx;

    iput-object p2, p0, Lcpz;->a:Ljava/lang/String;

    iput-object p3, p0, Lcpz;->b:Landroid/content/pm/PackageInfo;

    iput-boolean p4, p0, Lcpz;->c:Z

    iput-object p5, p0, Lcpz;->d:Lcpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 166
    iget-object v0, p0, Lcpz;->e:Lcpx;

    iget-object v1, p0, Lcpz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcpz;->b:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcpz;->c:Z

    iget-object v4, p0, Lcpz;->d:Lcpw;

    invoke-static {v0, v1, v2, v3, v4}, Lcpx;->a(Lcpx;Ljava/lang/String;Ljava/lang/String;ZLcpw;)Z

    .line 167
    return-void
.end method
