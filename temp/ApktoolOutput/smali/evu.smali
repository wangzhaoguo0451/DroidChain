.class final Levu;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Levs;


# direct methods
.method constructor <init>(Levs;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Levu;->a:Levs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Levu;->a:Levs;

    iput-boolean p2, v0, Levs;->c:Z

    .line 272
    return-void
.end method
