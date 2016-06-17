.class public final Lcbn;
.super Lcbl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcbl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcbl;-><init>()V

    invoke-super {p0, p1}, Lcbl;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcbl;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcbl;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
